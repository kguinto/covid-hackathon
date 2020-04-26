
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
      'Riverside Health & Rehab',
      '1301 E Broadway St
Missoula, MT 59802',
      'Missoula',
      'MT',
      'lease at front door',
      'Yes',
      '46.8639548',
      '-113.9738273'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Health & Rehab'
        AND o.latitude = '46.8639548'
        AND o.longitude = '-113.9738273'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Health & Rehab'
        AND o.latitude = '46.8639548'
        AND o.longitude = '-113.9738273'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Health & Rehab'
        AND o.latitude = '46.8639548'
        AND o.longitude = '-113.9738273'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Health & Rehab'
        AND o.latitude = '46.8639548'
        AND o.longitude = '-113.9738273'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Health & Rehab'
        AND o.latitude = '46.8639548'
        AND o.longitude = '-113.9738273'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Health & Rehab'
        AND o.latitude = '46.8639548'
        AND o.longitude = '-113.9738273'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Health & Rehab'
        AND o.latitude = '46.8639548'
        AND o.longitude = '-113.9738273'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Health & Rehab'
        AND o.latitude = '46.8639548'
        AND o.longitude = '-113.9738273'));

COMMIT;
