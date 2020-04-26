
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
      'Carrollton Regional Medical Center',
      '4343 N. Josey Lane
Carrollton, TX 75010',
      'Carrollton',
      'TX',
      'Attn: Mary Lau/Angie Marshall OR Emergency Department
4343 N. Josey Lane
Carrollton, TX 75010 ',
      'Yes',
      '33.0283096',
      '-96.8863443'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carrollton Regional Medical Center'
        AND o.latitude = '33.0283096'
        AND o.longitude = '-96.8863443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carrollton Regional Medical Center'
        AND o.latitude = '33.0283096'
        AND o.longitude = '-96.8863443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carrollton Regional Medical Center'
        AND o.latitude = '33.0283096'
        AND o.longitude = '-96.8863443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carrollton Regional Medical Center'
        AND o.latitude = '33.0283096'
        AND o.longitude = '-96.8863443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carrollton Regional Medical Center'
        AND o.latitude = '33.0283096'
        AND o.longitude = '-96.8863443'));

COMMIT;
