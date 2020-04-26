
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
      'Springhill Medical Group ',
      '2220 Gladstone Dr # 3
Pittsburg, CA 94565',
      'Pittsburg',
      'CA',
      'Curbside ok, please call (619)944-1087 first',
      'Yes',
      '38.0070008',
      '-121.8663853'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Springhill Medical Group '
        AND o.latitude = '38.0070008'
        AND o.longitude = '-121.8663853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Springhill Medical Group '
        AND o.latitude = '38.0070008'
        AND o.longitude = '-121.8663853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Springhill Medical Group '
        AND o.latitude = '38.0070008'
        AND o.longitude = '-121.8663853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Springhill Medical Group '
        AND o.latitude = '38.0070008'
        AND o.longitude = '-121.8663853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Springhill Medical Group '
        AND o.latitude = '38.0070008'
        AND o.longitude = '-121.8663853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Springhill Medical Group '
        AND o.latitude = '38.0070008'
        AND o.longitude = '-121.8663853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Springhill Medical Group '
        AND o.latitude = '38.0070008'
        AND o.longitude = '-121.8663853'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Springhill Medical Group '
        AND o.latitude = '38.0070008'
        AND o.longitude = '-121.8663853'));

COMMIT;
