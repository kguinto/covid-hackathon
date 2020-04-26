
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
      'Nebraska Medical Center',
      '44 E Ridge Dr
Council Bluffs, IA 51503',
      'Council Bluffs',
      'IA',
      '',
      '',
      '41.2763251',
      '-95.8236198'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medical Center'
        AND o.latitude = '41.2763251'
        AND o.longitude = '-95.8236198'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medical Center'
        AND o.latitude = '41.2763251'
        AND o.longitude = '-95.8236198'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medical Center'
        AND o.latitude = '41.2763251'
        AND o.longitude = '-95.8236198'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medical Center'
        AND o.latitude = '41.2763251'
        AND o.longitude = '-95.8236198'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medical Center'
        AND o.latitude = '41.2763251'
        AND o.longitude = '-95.8236198'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medical Center'
        AND o.latitude = '41.2763251'
        AND o.longitude = '-95.8236198'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medical Center'
        AND o.latitude = '41.2763251'
        AND o.longitude = '-95.8236198'));

COMMIT;
