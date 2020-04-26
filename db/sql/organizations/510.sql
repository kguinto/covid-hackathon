
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
      'Dellridge Health & Rehabilitation Center',
      '532 N Farview Avenue
Paramus, NJ 07652',
      'Paramus ',
      'NJ',
      'Mail to: ATTN: Swapna Swadhin, RN',
      'Yes',
      '40.9547844',
      '-74.0570924'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dellridge Health & Rehabilitation Center'
        AND o.latitude = '40.9547844'
        AND o.longitude = '-74.0570924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dellridge Health & Rehabilitation Center'
        AND o.latitude = '40.9547844'
        AND o.longitude = '-74.0570924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dellridge Health & Rehabilitation Center'
        AND o.latitude = '40.9547844'
        AND o.longitude = '-74.0570924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dellridge Health & Rehabilitation Center'
        AND o.latitude = '40.9547844'
        AND o.longitude = '-74.0570924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dellridge Health & Rehabilitation Center'
        AND o.latitude = '40.9547844'
        AND o.longitude = '-74.0570924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dellridge Health & Rehabilitation Center'
        AND o.latitude = '40.9547844'
        AND o.longitude = '-74.0570924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dellridge Health & Rehabilitation Center'
        AND o.latitude = '40.9547844'
        AND o.longitude = '-74.0570924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dellridge Health & Rehabilitation Center'
        AND o.latitude = '40.9547844'
        AND o.longitude = '-74.0570924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dellridge Health & Rehabilitation Center'
        AND o.latitude = '40.9547844'
        AND o.longitude = '-74.0570924'));

COMMIT;
