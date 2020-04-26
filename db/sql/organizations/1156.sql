
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
      'Holy Cross Health',
      '1500 Forest Glen Rd
Silver Spring, MD 20910',
      'Silver Spring',
      'MD',
      '',
      'No',
      '39.0147079',
      '-77.0347487'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Health'
        AND o.latitude = '39.0147079'
        AND o.longitude = '-77.0347487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Health'
        AND o.latitude = '39.0147079'
        AND o.longitude = '-77.0347487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Health'
        AND o.latitude = '39.0147079'
        AND o.longitude = '-77.0347487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Health'
        AND o.latitude = '39.0147079'
        AND o.longitude = '-77.0347487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Health'
        AND o.latitude = '39.0147079'
        AND o.longitude = '-77.0347487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Health'
        AND o.latitude = '39.0147079'
        AND o.longitude = '-77.0347487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Health'
        AND o.latitude = '39.0147079'
        AND o.longitude = '-77.0347487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Health'
        AND o.latitude = '39.0147079'
        AND o.longitude = '-77.0347487'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Holy Cross Health'
        AND o.latitude = '39.0147079'
        AND o.longitude = '-77.0347487'));

COMMIT;
