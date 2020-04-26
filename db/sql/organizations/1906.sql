
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
      'Atrium Post Acute Care of Matawan',
      '38 Freneau Ave
Matawan, NJ 07747',
      'Matawan ',
      'NJ',
      'Judy McKeown ',
      'Yes',
      '40.3999019',
      '-74.2379275'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Post Acute Care of Matawan'
        AND o.latitude = '40.3999019'
        AND o.longitude = '-74.2379275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Post Acute Care of Matawan'
        AND o.latitude = '40.3999019'
        AND o.longitude = '-74.2379275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Post Acute Care of Matawan'
        AND o.latitude = '40.3999019'
        AND o.longitude = '-74.2379275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Post Acute Care of Matawan'
        AND o.latitude = '40.3999019'
        AND o.longitude = '-74.2379275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Post Acute Care of Matawan'
        AND o.latitude = '40.3999019'
        AND o.longitude = '-74.2379275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Post Acute Care of Matawan'
        AND o.latitude = '40.3999019'
        AND o.longitude = '-74.2379275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Post Acute Care of Matawan'
        AND o.latitude = '40.3999019'
        AND o.longitude = '-74.2379275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Post Acute Care of Matawan'
        AND o.latitude = '40.3999019'
        AND o.longitude = '-74.2379275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Post Acute Care of Matawan'
        AND o.latitude = '40.3999019'
        AND o.longitude = '-74.2379275'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atrium Post Acute Care of Matawan'
        AND o.latitude = '40.3999019'
        AND o.longitude = '-74.2379275'));

COMMIT;
