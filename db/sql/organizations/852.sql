
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
      'Hospital HIMA San Pablo Caguas',
      '100 Luis Munoz Marin Avenue
Caguas, 00725, Puerto Rico',
      'Caguas',
      'PR',
      'Enter property on side/delivery entrance and report to Warehouse. ATTN: Heidi Rodriguez',
      'No',
      '18.2178783',
      '-66.0301092'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital HIMA San Pablo Caguas'
        AND o.latitude = '18.2178783'
        AND o.longitude = '-66.0301092'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital HIMA San Pablo Caguas'
        AND o.latitude = '18.2178783'
        AND o.longitude = '-66.0301092'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital HIMA San Pablo Caguas'
        AND o.latitude = '18.2178783'
        AND o.longitude = '-66.0301092'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital HIMA San Pablo Caguas'
        AND o.latitude = '18.2178783'
        AND o.longitude = '-66.0301092'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital HIMA San Pablo Caguas'
        AND o.latitude = '18.2178783'
        AND o.longitude = '-66.0301092'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital HIMA San Pablo Caguas'
        AND o.latitude = '18.2178783'
        AND o.longitude = '-66.0301092'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital HIMA San Pablo Caguas'
        AND o.latitude = '18.2178783'
        AND o.longitude = '-66.0301092'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital HIMA San Pablo Caguas'
        AND o.latitude = '18.2178783'
        AND o.longitude = '-66.0301092'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital HIMA San Pablo Caguas'
        AND o.latitude = '18.2178783'
        AND o.longitude = '-66.0301092'));

COMMIT;
