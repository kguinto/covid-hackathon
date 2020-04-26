
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
      'Jacobi Medical Center',
      '1400 Pelham Pkwy S
The Bronx, NY 10461',
      'Bronx',
      'NY',
      'I''m doing this on behalf of my mother, a nurse at Jacobi medical center. She doesn''t know that I am doing this. Therefore I do not know exactly where you could drop packages off, but I would use the address given and there should be a person at the front to direct deliveries.',
      'Not sure, but I would send them because everything helps.',
      '40.8556769',
      '-73.8462363'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobi Medical Center'
        AND o.latitude = '40.8556769'
        AND o.longitude = '-73.8462363'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobi Medical Center'
        AND o.latitude = '40.8556769'
        AND o.longitude = '-73.8462363'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobi Medical Center'
        AND o.latitude = '40.8556769'
        AND o.longitude = '-73.8462363'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobi Medical Center'
        AND o.latitude = '40.8556769'
        AND o.longitude = '-73.8462363'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobi Medical Center'
        AND o.latitude = '40.8556769'
        AND o.longitude = '-73.8462363'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobi Medical Center'
        AND o.latitude = '40.8556769'
        AND o.longitude = '-73.8462363'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobi Medical Center'
        AND o.latitude = '40.8556769'
        AND o.longitude = '-73.8462363'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobi Medical Center'
        AND o.latitude = '40.8556769'
        AND o.longitude = '-73.8462363'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobi Medical Center'
        AND o.latitude = '40.8556769'
        AND o.longitude = '-73.8462363'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobi Medical Center'
        AND o.latitude = '40.8556769'
        AND o.longitude = '-73.8462363'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Whatever you can spare. Our healthcare providers are our soldiers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobi Medical Center'
        AND o.latitude = '40.8556769'
        AND o.longitude = '-73.8462363'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('and we need to protect them the way we would protect the military.',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jacobi Medical Center'
        AND o.latitude = '40.8556769'
        AND o.longitude = '-73.8462363'));

COMMIT;
