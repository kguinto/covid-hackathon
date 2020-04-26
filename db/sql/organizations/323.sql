
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
      'Garden Grove Hospital and Medical Center',
      '12601 Garden Grove Blvd
Garden Grove, CA 92843',
      'Garden Grove',
      'CA',
      'Attn: Dr. True McMahen',
      'No',
      '33.7750066',
      '-117.9129079'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Grove Hospital and Medical Center'
        AND o.latitude = '33.7750066'
        AND o.longitude = '-117.9129079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Grove Hospital and Medical Center'
        AND o.latitude = '33.7750066'
        AND o.longitude = '-117.9129079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Grove Hospital and Medical Center'
        AND o.latitude = '33.7750066'
        AND o.longitude = '-117.9129079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Grove Hospital and Medical Center'
        AND o.latitude = '33.7750066'
        AND o.longitude = '-117.9129079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Grove Hospital and Medical Center'
        AND o.latitude = '33.7750066'
        AND o.longitude = '-117.9129079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Grove Hospital and Medical Center'
        AND o.latitude = '33.7750066'
        AND o.longitude = '-117.9129079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Grove Hospital and Medical Center'
        AND o.latitude = '33.7750066'
        AND o.longitude = '-117.9129079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Grove Hospital and Medical Center'
        AND o.latitude = '33.7750066'
        AND o.longitude = '-117.9129079'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden Grove Hospital and Medical Center'
        AND o.latitude = '33.7750066'
        AND o.longitude = '-117.9129079'));

COMMIT;
