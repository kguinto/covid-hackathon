
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
      'Samaritan Pacific Communities Hospital',
      '930 SW Abbey St
Newport, OR 97365',
      'Newport',
      'OR',
      'TBD',
      'Yes',
      '44.6296823',
      '-124.0590056'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Samaritan Pacific Communities Hospital'
        AND o.latitude = '44.6296823'
        AND o.longitude = '-124.0590056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Samaritan Pacific Communities Hospital'
        AND o.latitude = '44.6296823'
        AND o.longitude = '-124.0590056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable Booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Samaritan Pacific Communities Hospital'
        AND o.latitude = '44.6296823'
        AND o.longitude = '-124.0590056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety Goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Samaritan Pacific Communities Hospital'
        AND o.latitude = '44.6296823'
        AND o.longitude = '-124.0590056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Samaritan Pacific Communities Hospital'
        AND o.latitude = '44.6296823'
        AND o.longitude = '-124.0590056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face Shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Samaritan Pacific Communities Hospital'
        AND o.latitude = '44.6296823'
        AND o.longitude = '-124.0590056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Isopropyl Alcohol',
    (SELECT id FROM organizations o
      WHERE o.name = 'Samaritan Pacific Communities Hospital'
        AND o.latitude = '44.6296823'
        AND o.longitude = '-124.0590056'));

COMMIT;
