
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
      'CHI St. Alexius Bismarck ',
      '900 East Broadway
Bismarck, ND 58501',
      'Bismarck',
      'ND',
      'Mailing or Bring to the emergency department ',
      'Yes',
      '46.8076302',
      '-100.777575'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHI St. Alexius Bismarck '
        AND o.latitude = '46.8076302'
        AND o.longitude = '-100.777575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHI St. Alexius Bismarck '
        AND o.latitude = '46.8076302'
        AND o.longitude = '-100.777575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHI St. Alexius Bismarck '
        AND o.latitude = '46.8076302'
        AND o.longitude = '-100.777575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHI St. Alexius Bismarck '
        AND o.latitude = '46.8076302'
        AND o.longitude = '-100.777575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHI St. Alexius Bismarck '
        AND o.latitude = '46.8076302'
        AND o.longitude = '-100.777575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHI St. Alexius Bismarck '
        AND o.latitude = '46.8076302'
        AND o.longitude = '-100.777575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHI St. Alexius Bismarck '
        AND o.latitude = '46.8076302'
        AND o.longitude = '-100.777575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHI St. Alexius Bismarck '
        AND o.latitude = '46.8076302'
        AND o.longitude = '-100.777575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHI St. Alexius Bismarck '
        AND o.latitude = '46.8076302'
        AND o.longitude = '-100.777575'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'CHI St. Alexius Bismarck '
        AND o.latitude = '46.8076302'
        AND o.longitude = '-100.777575'));

COMMIT;
