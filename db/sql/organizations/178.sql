
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
      'Texas Medical Rehabilitation, located in Southwest Atrium',
      '6776 Southwest Fwy
Houston, TX 77074',
      'Houston',
      'TX',
      'Box in the leasing office, Suite 587',
      'Yes',
      '29.7155473',
      '-95.5020077'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Medical Rehabilitation, located in Southwest Atrium'
        AND o.latitude = '29.7155473'
        AND o.longitude = '-95.5020077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Medical Rehabilitation, located in Southwest Atrium'
        AND o.latitude = '29.7155473'
        AND o.longitude = '-95.5020077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Medical Rehabilitation, located in Southwest Atrium'
        AND o.latitude = '29.7155473'
        AND o.longitude = '-95.5020077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Medical Rehabilitation, located in Southwest Atrium'
        AND o.latitude = '29.7155473'
        AND o.longitude = '-95.5020077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Medical Rehabilitation, located in Southwest Atrium'
        AND o.latitude = '29.7155473'
        AND o.longitude = '-95.5020077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Medical Rehabilitation, located in Southwest Atrium'
        AND o.latitude = '29.7155473'
        AND o.longitude = '-95.5020077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Medical Rehabilitation, located in Southwest Atrium'
        AND o.latitude = '29.7155473'
        AND o.longitude = '-95.5020077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Medical Rehabilitation, located in Southwest Atrium'
        AND o.latitude = '29.7155473'
        AND o.longitude = '-95.5020077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Medical Rehabilitation, located in Southwest Atrium'
        AND o.latitude = '29.7155473'
        AND o.longitude = '-95.5020077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Medical Rehabilitation, located in Southwest Atrium'
        AND o.latitude = '29.7155473'
        AND o.longitude = '-95.5020077'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Homemade Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Texas Medical Rehabilitation, located in Southwest Atrium'
        AND o.latitude = '29.7155473'
        AND o.longitude = '-95.5020077'));

COMMIT;
