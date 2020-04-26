
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
      'Frederick Health',
      '405 W 7th St
Frederick, MD 21701',
      'Frederick',
      'MD',
      '405 W. 7th St.',
      'No',
      '39.4241873',
      '-77.4145681'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frederick Health'
        AND o.latitude = '39.4241873'
        AND o.longitude = '-77.4145681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frederick Health'
        AND o.latitude = '39.4241873'
        AND o.longitude = '-77.4145681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frederick Health'
        AND o.latitude = '39.4241873'
        AND o.longitude = '-77.4145681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frederick Health'
        AND o.latitude = '39.4241873'
        AND o.longitude = '-77.4145681'));

COMMIT;
