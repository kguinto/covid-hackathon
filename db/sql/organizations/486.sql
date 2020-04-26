
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
      'Adventist Health Bakersfield',
      '2615 Chester Ave
Bakersfield, CA 93301',
      'Bakersfield ',
      'CA',
      '',
      'Yes',
      '35.3833744',
      '-119.0206543'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Bakersfield'
        AND o.latitude = '35.3833744'
        AND o.longitude = '-119.0206543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Bakersfield'
        AND o.latitude = '35.3833744'
        AND o.longitude = '-119.0206543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Bakersfield'
        AND o.latitude = '35.3833744'
        AND o.longitude = '-119.0206543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Bakersfield'
        AND o.latitude = '35.3833744'
        AND o.longitude = '-119.0206543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Bakersfield'
        AND o.latitude = '35.3833744'
        AND o.longitude = '-119.0206543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Bakersfield'
        AND o.latitude = '35.3833744'
        AND o.longitude = '-119.0206543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Bakersfield'
        AND o.latitude = '35.3833744'
        AND o.longitude = '-119.0206543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Bakersfield'
        AND o.latitude = '35.3833744'
        AND o.longitude = '-119.0206543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Bakersfield'
        AND o.latitude = '35.3833744'
        AND o.longitude = '-119.0206543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health Bakersfield'
        AND o.latitude = '35.3833744'
        AND o.longitude = '-119.0206543'));

COMMIT;
