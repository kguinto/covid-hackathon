
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
      'Flushing Hospital Medical Center',
      '89-06 135th Street
Jamaica, NY 11418',
      'New York - Queens',
      'NY',
      'ATTN: Supply Chain, Materials Management / James Chen / Wayne Bowen',
      'Yes',
      '40.7006743',
      '-73.8172316'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing Hospital Medical Center'
        AND o.latitude = '40.7006743'
        AND o.longitude = '-73.8172316'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing Hospital Medical Center'
        AND o.latitude = '40.7006743'
        AND o.longitude = '-73.8172316'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing Hospital Medical Center'
        AND o.latitude = '40.7006743'
        AND o.longitude = '-73.8172316'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing Hospital Medical Center'
        AND o.latitude = '40.7006743'
        AND o.longitude = '-73.8172316'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing Hospital Medical Center'
        AND o.latitude = '40.7006743'
        AND o.longitude = '-73.8172316'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing Hospital Medical Center'
        AND o.latitude = '40.7006743'
        AND o.longitude = '-73.8172316'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing Hospital Medical Center'
        AND o.latitude = '40.7006743'
        AND o.longitude = '-73.8172316'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing Hospital Medical Center'
        AND o.latitude = '40.7006743'
        AND o.longitude = '-73.8172316'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing Hospital Medical Center'
        AND o.latitude = '40.7006743'
        AND o.longitude = '-73.8172316'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing Hospital Medical Center'
        AND o.latitude = '40.7006743'
        AND o.longitude = '-73.8172316'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable Stethoscopes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing Hospital Medical Center'
        AND o.latitude = '40.7006743'
        AND o.longitude = '-73.8172316'));

COMMIT;
