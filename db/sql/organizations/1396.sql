
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
      'Parkland Hospital',
      '5223 Tex Oak Ave
Dallas, TX 75235',
      'Dallas',
      'TX',
      '',
      'Yes',
      '32.814266',
      '-96.835288'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.814266'
        AND o.longitude = '-96.835288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.814266'
        AND o.longitude = '-96.835288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.814266'
        AND o.longitude = '-96.835288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.814266'
        AND o.longitude = '-96.835288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.814266'
        AND o.longitude = '-96.835288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.814266'
        AND o.longitude = '-96.835288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.814266'
        AND o.longitude = '-96.835288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.814266'
        AND o.longitude = '-96.835288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.814266'
        AND o.longitude = '-96.835288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.814266'
        AND o.longitude = '-96.835288'));

COMMIT;
