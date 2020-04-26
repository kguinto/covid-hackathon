
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
      'Baylor Scott and White',
      '2401 S 31st St
Temple, TX 76508',
      'Temple ',
      'TX',
      '',
      'Yes',
      '31.0776472',
      '-97.3639792'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White'
        AND o.latitude = '31.0776472'
        AND o.longitude = '-97.3639792'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White'
        AND o.latitude = '31.0776472'
        AND o.longitude = '-97.3639792'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White'
        AND o.latitude = '31.0776472'
        AND o.longitude = '-97.3639792'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White'
        AND o.latitude = '31.0776472'
        AND o.longitude = '-97.3639792'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White'
        AND o.latitude = '31.0776472'
        AND o.longitude = '-97.3639792'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White'
        AND o.latitude = '31.0776472'
        AND o.longitude = '-97.3639792'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White'
        AND o.latitude = '31.0776472'
        AND o.longitude = '-97.3639792'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White'
        AND o.latitude = '31.0776472'
        AND o.longitude = '-97.3639792'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White'
        AND o.latitude = '31.0776472'
        AND o.longitude = '-97.3639792'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White'
        AND o.latitude = '31.0776472'
        AND o.longitude = '-97.3639792'));

COMMIT;
