
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
      'Champlain Family Health',
      '828 State Rte 11
Champlain, NY 12919',
      'Champlain',
      'NY',
      'Mailing Address Attn: Melissa Gooley',
      'No',
      '44.9791946',
      '-73.4399261'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Champlain Family Health'
        AND o.latitude = '44.9791946'
        AND o.longitude = '-73.4399261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Champlain Family Health'
        AND o.latitude = '44.9791946'
        AND o.longitude = '-73.4399261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Champlain Family Health'
        AND o.latitude = '44.9791946'
        AND o.longitude = '-73.4399261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Champlain Family Health'
        AND o.latitude = '44.9791946'
        AND o.longitude = '-73.4399261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Champlain Family Health'
        AND o.latitude = '44.9791946'
        AND o.longitude = '-73.4399261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Champlain Family Health'
        AND o.latitude = '44.9791946'
        AND o.longitude = '-73.4399261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Champlain Family Health'
        AND o.latitude = '44.9791946'
        AND o.longitude = '-73.4399261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Champlain Family Health'
        AND o.latitude = '44.9791946'
        AND o.longitude = '-73.4399261'));

COMMIT;
