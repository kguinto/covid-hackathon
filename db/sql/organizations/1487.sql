
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
      'OhioHealth Westerville Medical Center',
      '300 Polaris Pkwy
Westerville, OH 43082',
      'Westerville',
      'OH',
      'Please come to the main entrance and contact Emilee Palmer at 740-507-6242',
      'No',
      '40.1473563',
      '-82.9381396'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Westerville Medical Center'
        AND o.latitude = '40.1473563'
        AND o.longitude = '-82.9381396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Westerville Medical Center'
        AND o.latitude = '40.1473563'
        AND o.longitude = '-82.9381396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Westerville Medical Center'
        AND o.latitude = '40.1473563'
        AND o.longitude = '-82.9381396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Westerville Medical Center'
        AND o.latitude = '40.1473563'
        AND o.longitude = '-82.9381396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Westerville Medical Center'
        AND o.latitude = '40.1473563'
        AND o.longitude = '-82.9381396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Westerville Medical Center'
        AND o.latitude = '40.1473563'
        AND o.longitude = '-82.9381396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Westerville Medical Center'
        AND o.latitude = '40.1473563'
        AND o.longitude = '-82.9381396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Westerville Medical Center'
        AND o.latitude = '40.1473563'
        AND o.longitude = '-82.9381396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Westerville Medical Center'
        AND o.latitude = '40.1473563'
        AND o.longitude = '-82.9381396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Westerville Medical Center'
        AND o.latitude = '40.1473563'
        AND o.longitude = '-82.9381396'));

COMMIT;
