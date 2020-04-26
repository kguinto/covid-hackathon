
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
      'Wagner Heights Nursing and Rehabilitation Center',
      '9289 Branstetter Pl
Stockton, CA 95209',
      'Stockton, CA 95209',
      'CA',
      'ATTN: Maxine Niel',
      'Yes',
      '38.0342961',
      '-121.3475513'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wagner Heights Nursing and Rehabilitation Center'
        AND o.latitude = '38.0342961'
        AND o.longitude = '-121.3475513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wagner Heights Nursing and Rehabilitation Center'
        AND o.latitude = '38.0342961'
        AND o.longitude = '-121.3475513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wagner Heights Nursing and Rehabilitation Center'
        AND o.latitude = '38.0342961'
        AND o.longitude = '-121.3475513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wagner Heights Nursing and Rehabilitation Center'
        AND o.latitude = '38.0342961'
        AND o.longitude = '-121.3475513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wagner Heights Nursing and Rehabilitation Center'
        AND o.latitude = '38.0342961'
        AND o.longitude = '-121.3475513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wagner Heights Nursing and Rehabilitation Center'
        AND o.latitude = '38.0342961'
        AND o.longitude = '-121.3475513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wagner Heights Nursing and Rehabilitation Center'
        AND o.latitude = '38.0342961'
        AND o.longitude = '-121.3475513'));

COMMIT;
