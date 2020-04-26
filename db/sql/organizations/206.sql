
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
      'Carilion Roanoke Memorial Hospital',
      '1906 Belleview Ave SE
Roanoke, VA 24014',
      'Roanoke',
      'VA',
      'Ship using UPS, FedEx, USPS. Attn: Jack Perkins, MD',
      'No',
      '37.2516794',
      '-79.9410604'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carilion Roanoke Memorial Hospital'
        AND o.latitude = '37.2516794'
        AND o.longitude = '-79.9410604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carilion Roanoke Memorial Hospital'
        AND o.latitude = '37.2516794'
        AND o.longitude = '-79.9410604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carilion Roanoke Memorial Hospital'
        AND o.latitude = '37.2516794'
        AND o.longitude = '-79.9410604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carilion Roanoke Memorial Hospital'
        AND o.latitude = '37.2516794'
        AND o.longitude = '-79.9410604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carilion Roanoke Memorial Hospital'
        AND o.latitude = '37.2516794'
        AND o.longitude = '-79.9410604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carilion Roanoke Memorial Hospital'
        AND o.latitude = '37.2516794'
        AND o.longitude = '-79.9410604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carilion Roanoke Memorial Hospital'
        AND o.latitude = '37.2516794'
        AND o.longitude = '-79.9410604'));

COMMIT;
