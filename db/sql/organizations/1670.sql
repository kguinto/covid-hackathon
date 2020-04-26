
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
      'Ascension saint michael''s emergency department ',
      '900 Illinois Ave
Stevens Point, WI 54481',
      'Stevens point ',
      'WI',
      'Emergency department ',
      'Yes',
      '44.5268222',
      '-89.5665679'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension saint michael''s emergency department '
        AND o.latitude = '44.5268222'
        AND o.longitude = '-89.5665679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension saint michael''s emergency department '
        AND o.latitude = '44.5268222'
        AND o.longitude = '-89.5665679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension saint michael''s emergency department '
        AND o.latitude = '44.5268222'
        AND o.longitude = '-89.5665679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension saint michael''s emergency department '
        AND o.latitude = '44.5268222'
        AND o.longitude = '-89.5665679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension saint michael''s emergency department '
        AND o.latitude = '44.5268222'
        AND o.longitude = '-89.5665679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension saint michael''s emergency department '
        AND o.latitude = '44.5268222'
        AND o.longitude = '-89.5665679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension saint michael''s emergency department '
        AND o.latitude = '44.5268222'
        AND o.longitude = '-89.5665679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension saint michael''s emergency department '
        AND o.latitude = '44.5268222'
        AND o.longitude = '-89.5665679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension saint michael''s emergency department '
        AND o.latitude = '44.5268222'
        AND o.longitude = '-89.5665679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascension saint michael''s emergency department '
        AND o.latitude = '44.5268222'
        AND o.longitude = '-89.5665679'));

COMMIT;
