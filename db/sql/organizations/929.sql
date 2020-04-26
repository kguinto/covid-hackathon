
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
      'Synergy HomeCare Roseville',
      '316 Chelmsford Ct
Roseville, CA 95747',
      'Roseville',
      'CA',
      'front porch',
      'Yes',
      '38.7884042',
      '-121.334751'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Synergy HomeCare Roseville'
        AND o.latitude = '38.7884042'
        AND o.longitude = '-121.334751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Synergy HomeCare Roseville'
        AND o.latitude = '38.7884042'
        AND o.longitude = '-121.334751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Synergy HomeCare Roseville'
        AND o.latitude = '38.7884042'
        AND o.longitude = '-121.334751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Synergy HomeCare Roseville'
        AND o.latitude = '38.7884042'
        AND o.longitude = '-121.334751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Synergy HomeCare Roseville'
        AND o.latitude = '38.7884042'
        AND o.longitude = '-121.334751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Synergy HomeCare Roseville'
        AND o.latitude = '38.7884042'
        AND o.longitude = '-121.334751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Synergy HomeCare Roseville'
        AND o.latitude = '38.7884042'
        AND o.longitude = '-121.334751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Synergy HomeCare Roseville'
        AND o.latitude = '38.7884042'
        AND o.longitude = '-121.334751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Synergy HomeCare Roseville'
        AND o.latitude = '38.7884042'
        AND o.longitude = '-121.334751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Synergy HomeCare Roseville'
        AND o.latitude = '38.7884042'
        AND o.longitude = '-121.334751'));

COMMIT;
