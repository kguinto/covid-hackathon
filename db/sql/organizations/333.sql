
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
      '555 Lenox Avenue #2D
New York, NY 10037',
      'New York - Manhattan',
      'NY',
      'Regina Taylor-Tuck',
      'Yes',
      '40.8163263',
      '-73.9395871'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8163263'
        AND o.longitude = '-73.9395871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8163263'
        AND o.longitude = '-73.9395871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8163263'
        AND o.longitude = '-73.9395871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8163263'
        AND o.longitude = '-73.9395871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8163263'
        AND o.longitude = '-73.9395871'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options '
        AND o.latitude = '40.8163263'
        AND o.longitude = '-73.9395871'));

COMMIT;
