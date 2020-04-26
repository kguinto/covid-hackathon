
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
      'Alamitos West Health & Rehab',
      '3902 Katella Ave
Los Alamitos, CA 90720',
      'Los Alamitos',
      'CA',
      'lease at front door',
      'Yes',
      '33.8027011',
      '-118.0646213'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alamitos West Health & Rehab'
        AND o.latitude = '33.8027011'
        AND o.longitude = '-118.0646213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alamitos West Health & Rehab'
        AND o.latitude = '33.8027011'
        AND o.longitude = '-118.0646213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alamitos West Health & Rehab'
        AND o.latitude = '33.8027011'
        AND o.longitude = '-118.0646213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alamitos West Health & Rehab'
        AND o.latitude = '33.8027011'
        AND o.longitude = '-118.0646213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alamitos West Health & Rehab'
        AND o.latitude = '33.8027011'
        AND o.longitude = '-118.0646213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alamitos West Health & Rehab'
        AND o.latitude = '33.8027011'
        AND o.longitude = '-118.0646213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alamitos West Health & Rehab'
        AND o.latitude = '33.8027011'
        AND o.longitude = '-118.0646213'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alamitos West Health & Rehab'
        AND o.latitude = '33.8027011'
        AND o.longitude = '-118.0646213'));

COMMIT;
