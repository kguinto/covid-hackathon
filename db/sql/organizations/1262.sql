
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
      'Sherwood Village Assisted Living',
      '102 S Sherwood Village Dr
Tucson, AZ 85710',
      'Tucson',
      'AZ',
      'Ring bell at front door',
      'Yes',
      '32.2193717',
      '-110.8219506'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sherwood Village Assisted Living'
        AND o.latitude = '32.2193717'
        AND o.longitude = '-110.8219506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sherwood Village Assisted Living'
        AND o.latitude = '32.2193717'
        AND o.longitude = '-110.8219506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sherwood Village Assisted Living'
        AND o.latitude = '32.2193717'
        AND o.longitude = '-110.8219506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sherwood Village Assisted Living'
        AND o.latitude = '32.2193717'
        AND o.longitude = '-110.8219506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sherwood Village Assisted Living'
        AND o.latitude = '32.2193717'
        AND o.longitude = '-110.8219506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sherwood Village Assisted Living'
        AND o.latitude = '32.2193717'
        AND o.longitude = '-110.8219506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sherwood Village Assisted Living'
        AND o.latitude = '32.2193717'
        AND o.longitude = '-110.8219506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sherwood Village Assisted Living'
        AND o.latitude = '32.2193717'
        AND o.longitude = '-110.8219506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sherwood Village Assisted Living'
        AND o.latitude = '32.2193717'
        AND o.longitude = '-110.8219506'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sherwood Village Assisted Living'
        AND o.latitude = '32.2193717'
        AND o.longitude = '-110.8219506'));

COMMIT;
