
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
      'Air Methods Corporation',
      '5500 S Quebec St
Greenwood Village, CO 80111',
      'Greenwood Village',
      'CO',
      'Attn. Paul Williams',
      'Yes',
      '39.6160447',
      '-104.903024'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Air Methods Corporation'
        AND o.latitude = '39.6160447'
        AND o.longitude = '-104.903024'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Air Methods Corporation'
        AND o.latitude = '39.6160447'
        AND o.longitude = '-104.903024'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Air Methods Corporation'
        AND o.latitude = '39.6160447'
        AND o.longitude = '-104.903024'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Air Methods Corporation'
        AND o.latitude = '39.6160447'
        AND o.longitude = '-104.903024'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Air Methods Corporation'
        AND o.latitude = '39.6160447'
        AND o.longitude = '-104.903024'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Air Methods Corporation'
        AND o.latitude = '39.6160447'
        AND o.longitude = '-104.903024'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Air Methods Corporation'
        AND o.latitude = '39.6160447'
        AND o.longitude = '-104.903024'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Air Methods Corporation'
        AND o.latitude = '39.6160447'
        AND o.longitude = '-104.903024'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Air Methods Corporation'
        AND o.latitude = '39.6160447'
        AND o.longitude = '-104.903024'));

COMMIT;
