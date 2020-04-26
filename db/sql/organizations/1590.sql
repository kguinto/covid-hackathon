
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
      'Benson Hospital',
      '450 S Ocotillo Ave
Benson, AZ 85602',
      'Benson',
      'AZ',
      'Drop off on south side of building.',
      'Yes',
      '31.9649438',
      '-110.3084953'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Benson Hospital'
        AND o.latitude = '31.9649438'
        AND o.longitude = '-110.3084953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Benson Hospital'
        AND o.latitude = '31.9649438'
        AND o.longitude = '-110.3084953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Benson Hospital'
        AND o.latitude = '31.9649438'
        AND o.longitude = '-110.3084953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Benson Hospital'
        AND o.latitude = '31.9649438'
        AND o.longitude = '-110.3084953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Benson Hospital'
        AND o.latitude = '31.9649438'
        AND o.longitude = '-110.3084953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Benson Hospital'
        AND o.latitude = '31.9649438'
        AND o.longitude = '-110.3084953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Benson Hospital'
        AND o.latitude = '31.9649438'
        AND o.longitude = '-110.3084953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Benson Hospital'
        AND o.latitude = '31.9649438'
        AND o.longitude = '-110.3084953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Benson Hospital'
        AND o.latitude = '31.9649438'
        AND o.longitude = '-110.3084953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Benson Hospital'
        AND o.latitude = '31.9649438'
        AND o.longitude = '-110.3084953'));

COMMIT;
