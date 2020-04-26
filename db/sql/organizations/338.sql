
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
      'Community Options ',
      '24 Bradhurst Avenue 4
New York, NY 10030',
      'New York - Manhattan',
      'NY',
      'Regina Taylor-Tuck ',
      'Yes',
      '40.8221825',
      '-73.9436284'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8221825'
        AND o.longitude = '-73.9436284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8221825'
        AND o.longitude = '-73.9436284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8221825'
        AND o.longitude = '-73.9436284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8221825'
        AND o.longitude = '-73.9436284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8221825'
        AND o.longitude = '-73.9436284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8221825'
        AND o.longitude = '-73.9436284'));

COMMIT;
