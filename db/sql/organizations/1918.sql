
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Sunrise Senior Living of Smithtown ',
      '30 NY-111
Smithtown, NY 11787',
      'Smithtown ',
      'NY',
      'Drop at front door, ring door bell, we are on lockdown. ',
      'Yes',
      '40.8539393',
      '-73.1884766'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living of Smithtown '
        AND o.latitude = '40.8539393'
        AND o.longitude = '-73.1884766'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living of Smithtown '
        AND o.latitude = '40.8539393'
        AND o.longitude = '-73.1884766'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living of Smithtown '
        AND o.latitude = '40.8539393'
        AND o.longitude = '-73.1884766'));

COMMIT;
