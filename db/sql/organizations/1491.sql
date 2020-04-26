
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
      'OhioHealth Shelby Hospital',
      '199 W Main St
Shelby, OH 44875',
      'Shelby',
      'OH',
      'Please come to the main entrance and contact Kyle Martin at 419-571-4763',
      'No',
      '40.882361',
      '-82.6740811'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Shelby Hospital'
        AND o.latitude = '40.882361'
        AND o.longitude = '-82.6740811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Shelby Hospital'
        AND o.latitude = '40.882361'
        AND o.longitude = '-82.6740811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Shelby Hospital'
        AND o.latitude = '40.882361'
        AND o.longitude = '-82.6740811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Shelby Hospital'
        AND o.latitude = '40.882361'
        AND o.longitude = '-82.6740811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Shelby Hospital'
        AND o.latitude = '40.882361'
        AND o.longitude = '-82.6740811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Shelby Hospital'
        AND o.latitude = '40.882361'
        AND o.longitude = '-82.6740811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Shelby Hospital'
        AND o.latitude = '40.882361'
        AND o.longitude = '-82.6740811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Shelby Hospital'
        AND o.latitude = '40.882361'
        AND o.longitude = '-82.6740811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Shelby Hospital'
        AND o.latitude = '40.882361'
        AND o.longitude = '-82.6740811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Shelby Hospital'
        AND o.latitude = '40.882361'
        AND o.longitude = '-82.6740811'));

COMMIT;
