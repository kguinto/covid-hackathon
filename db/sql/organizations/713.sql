
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
      'Northridge Hospital Medical Center',
      '18300 Roscoe Blvd
Northridge, CA 91325',
      'Northridge',
      'CA',
      'Drop off in lobby or mail in.',
      'Unused product',
      '34.2205406',
      '-118.5338644'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northridge Hospital Medical Center'
        AND o.latitude = '34.2205406'
        AND o.longitude = '-118.5338644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northridge Hospital Medical Center'
        AND o.latitude = '34.2205406'
        AND o.longitude = '-118.5338644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northridge Hospital Medical Center'
        AND o.latitude = '34.2205406'
        AND o.longitude = '-118.5338644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northridge Hospital Medical Center'
        AND o.latitude = '34.2205406'
        AND o.longitude = '-118.5338644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northridge Hospital Medical Center'
        AND o.latitude = '34.2205406'
        AND o.longitude = '-118.5338644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northridge Hospital Medical Center'
        AND o.latitude = '34.2205406'
        AND o.longitude = '-118.5338644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northridge Hospital Medical Center'
        AND o.latitude = '34.2205406'
        AND o.longitude = '-118.5338644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northridge Hospital Medical Center'
        AND o.latitude = '34.2205406'
        AND o.longitude = '-118.5338644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northridge Hospital Medical Center'
        AND o.latitude = '34.2205406'
        AND o.longitude = '-118.5338644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northridge Hospital Medical Center'
        AND o.latitude = '34.2205406'
        AND o.longitude = '-118.5338644'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Any medical-grade supplies',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northridge Hospital Medical Center'
        AND o.latitude = '34.2205406'
        AND o.longitude = '-118.5338644'));

COMMIT;
