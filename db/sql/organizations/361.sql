
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
      'Atrium Health Carolinas Medical Center',
      '2828 N Poplar St
Charlotte, NC 28206',
      'Charlotte',
      'NC',
      'ATTN: PPE Donations',
      'Unsure',
      '35.2511798',
      '-80.814075'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Health Carolinas Medical Center'
        AND o.latitude = '35.2511798'
        AND o.longitude = '-80.814075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Health Carolinas Medical Center'
        AND o.latitude = '35.2511798'
        AND o.longitude = '-80.814075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Health Carolinas Medical Center'
        AND o.latitude = '35.2511798'
        AND o.longitude = '-80.814075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Health Carolinas Medical Center'
        AND o.latitude = '35.2511798'
        AND o.longitude = '-80.814075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Health Carolinas Medical Center'
        AND o.latitude = '35.2511798'
        AND o.longitude = '-80.814075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Health Carolinas Medical Center'
        AND o.latitude = '35.2511798'
        AND o.longitude = '-80.814075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Health Carolinas Medical Center'
        AND o.latitude = '35.2511798'
        AND o.longitude = '-80.814075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Health Carolinas Medical Center'
        AND o.latitude = '35.2511798'
        AND o.longitude = '-80.814075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Health Carolinas Medical Center'
        AND o.latitude = '35.2511798'
        AND o.longitude = '-80.814075'));

COMMIT;
