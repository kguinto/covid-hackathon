
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
      'The Garrison Geriatric Education and Care Center',
      '3710 4th St
Lubbock, TX 79415',
      'Lubbock',
      'TX',
      '',
      'Yes',
      '33.5933301',
      '-101.893759'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Garrison Geriatric Education and Care Center'
        AND o.latitude = '33.5933301'
        AND o.longitude = '-101.893759'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Garrison Geriatric Education and Care Center'
        AND o.latitude = '33.5933301'
        AND o.longitude = '-101.893759'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Garrison Geriatric Education and Care Center'
        AND o.latitude = '33.5933301'
        AND o.longitude = '-101.893759'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Garrison Geriatric Education and Care Center'
        AND o.latitude = '33.5933301'
        AND o.longitude = '-101.893759'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Garrison Geriatric Education and Care Center'
        AND o.latitude = '33.5933301'
        AND o.longitude = '-101.893759'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Garrison Geriatric Education and Care Center'
        AND o.latitude = '33.5933301'
        AND o.longitude = '-101.893759'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Garrison Geriatric Education and Care Center'
        AND o.latitude = '33.5933301'
        AND o.longitude = '-101.893759'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Garrison Geriatric Education and Care Center'
        AND o.latitude = '33.5933301'
        AND o.longitude = '-101.893759'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Garrison Geriatric Education and Care Center'
        AND o.latitude = '33.5933301'
        AND o.longitude = '-101.893759'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Garrison Geriatric Education and Care Center'
        AND o.latitude = '33.5933301'
        AND o.longitude = '-101.893759'));

COMMIT;
