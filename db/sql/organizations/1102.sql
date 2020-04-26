
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
      'Dr Pelton''s Office Internal Medicine',
      '164 Boynton Ave #103
Plattsburgh, NY 12901',
      'Plattsburgh',
      'NY',
      'Attn Dr Pelton',
      'Yes',
      '44.7081604',
      '-73.4679869'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr Pelton''s Office Internal Medicine'
        AND o.latitude = '44.7081604'
        AND o.longitude = '-73.4679869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr Pelton''s Office Internal Medicine'
        AND o.latitude = '44.7081604'
        AND o.longitude = '-73.4679869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr Pelton''s Office Internal Medicine'
        AND o.latitude = '44.7081604'
        AND o.longitude = '-73.4679869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr Pelton''s Office Internal Medicine'
        AND o.latitude = '44.7081604'
        AND o.longitude = '-73.4679869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr Pelton''s Office Internal Medicine'
        AND o.latitude = '44.7081604'
        AND o.longitude = '-73.4679869'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr Pelton''s Office Internal Medicine'
        AND o.latitude = '44.7081604'
        AND o.longitude = '-73.4679869'));

COMMIT;
