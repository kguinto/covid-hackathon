
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
      'Asante Health System - Rogue Regional Medical Center',
      '2825 E. Barnett Rd
Medford, OR 97504',
      'Medford',
      'OR',
      'Loading dock',
      'Yes',
      '42.3174845',
      '-122.8311596'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Rogue Regional Medical Center'
        AND o.latitude = '42.3174845'
        AND o.longitude = '-122.8311596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Rogue Regional Medical Center'
        AND o.latitude = '42.3174845'
        AND o.longitude = '-122.8311596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Rogue Regional Medical Center'
        AND o.latitude = '42.3174845'
        AND o.longitude = '-122.8311596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Rogue Regional Medical Center'
        AND o.latitude = '42.3174845'
        AND o.longitude = '-122.8311596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Rogue Regional Medical Center'
        AND o.latitude = '42.3174845'
        AND o.longitude = '-122.8311596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Rogue Regional Medical Center'
        AND o.latitude = '42.3174845'
        AND o.longitude = '-122.8311596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Rogue Regional Medical Center'
        AND o.latitude = '42.3174845'
        AND o.longitude = '-122.8311596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Rogue Regional Medical Center'
        AND o.latitude = '42.3174845'
        AND o.longitude = '-122.8311596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Rogue Regional Medical Center'
        AND o.latitude = '42.3174845'
        AND o.longitude = '-122.8311596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System - Rogue Regional Medical Center'
        AND o.latitude = '42.3174845'
        AND o.longitude = '-122.8311596'));

COMMIT;
