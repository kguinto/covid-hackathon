
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
      'Grays Harbor Community Hospital',
      '915 Anderson Dr
Aberdeen, WA 98520',
      'Aberdeen',
      'WA',
      'Front desk',
      'Yes',
      '46.9792794',
      '-123.8469526'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grays Harbor Community Hospital'
        AND o.latitude = '46.9792794'
        AND o.longitude = '-123.8469526'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grays Harbor Community Hospital'
        AND o.latitude = '46.9792794'
        AND o.longitude = '-123.8469526'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grays Harbor Community Hospital'
        AND o.latitude = '46.9792794'
        AND o.longitude = '-123.8469526'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grays Harbor Community Hospital'
        AND o.latitude = '46.9792794'
        AND o.longitude = '-123.8469526'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grays Harbor Community Hospital'
        AND o.latitude = '46.9792794'
        AND o.longitude = '-123.8469526'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grays Harbor Community Hospital'
        AND o.latitude = '46.9792794'
        AND o.longitude = '-123.8469526'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grays Harbor Community Hospital'
        AND o.latitude = '46.9792794'
        AND o.longitude = '-123.8469526'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grays Harbor Community Hospital'
        AND o.latitude = '46.9792794'
        AND o.longitude = '-123.8469526'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Grays Harbor Community Hospital'
        AND o.latitude = '46.9792794'
        AND o.longitude = '-123.8469526'));

COMMIT;
