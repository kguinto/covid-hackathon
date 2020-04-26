
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
      'St. John''s Riverside Hospital',
      '967 N Broadway
Yonkers, NY 10701',
      'Yonkers',
      'NY',
      'Attn: Medication Education, 6West Resident Wing',
      '',
      '40.9688196',
      '-73.8864694'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. John''s Riverside Hospital'
        AND o.latitude = '40.9688196'
        AND o.longitude = '-73.8864694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. John''s Riverside Hospital'
        AND o.latitude = '40.9688196'
        AND o.longitude = '-73.8864694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. John''s Riverside Hospital'
        AND o.latitude = '40.9688196'
        AND o.longitude = '-73.8864694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. John''s Riverside Hospital'
        AND o.latitude = '40.9688196'
        AND o.longitude = '-73.8864694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. John''s Riverside Hospital'
        AND o.latitude = '40.9688196'
        AND o.longitude = '-73.8864694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. John''s Riverside Hospital'
        AND o.latitude = '40.9688196'
        AND o.longitude = '-73.8864694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. John''s Riverside Hospital'
        AND o.latitude = '40.9688196'
        AND o.longitude = '-73.8864694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. John''s Riverside Hospital'
        AND o.latitude = '40.9688196'
        AND o.longitude = '-73.8864694'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. John''s Riverside Hospital'
        AND o.latitude = '40.9688196'
        AND o.longitude = '-73.8864694'));

COMMIT;
