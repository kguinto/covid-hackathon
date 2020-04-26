
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
      'St. Mary''s Hospital',
      '56 Franklin St
Waterbury, CT 06706',
      'Waterbury',
      'CT',
      'Curbside or mail.',
      'Yes',
      '41.5525708',
      '-73.0364301'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary''s Hospital'
        AND o.latitude = '41.5525708'
        AND o.longitude = '-73.0364301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary''s Hospital'
        AND o.latitude = '41.5525708'
        AND o.longitude = '-73.0364301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary''s Hospital'
        AND o.latitude = '41.5525708'
        AND o.longitude = '-73.0364301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary''s Hospital'
        AND o.latitude = '41.5525708'
        AND o.longitude = '-73.0364301'));

COMMIT;
