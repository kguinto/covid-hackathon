
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
      'Woodhull Hospital',
      '760 Broadway
Brooklyn, NY 11206',
      'New York - Brooklyn',
      'NY',
      'Drop off at front desk and tell them the donations are for the Emergency Department',
      'Unknown',
      '40.6996948',
      '-73.9425116'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Woodhull Hospital'
        AND o.latitude = '40.6996948'
        AND o.longitude = '-73.9425116'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Woodhull Hospital'
        AND o.latitude = '40.6996948'
        AND o.longitude = '-73.9425116'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Woodhull Hospital'
        AND o.latitude = '40.6996948'
        AND o.longitude = '-73.9425116'));

COMMIT;
