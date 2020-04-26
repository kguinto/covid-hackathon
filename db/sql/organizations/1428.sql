
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
      'Cyril W. Rebel MD',
      '550 E Almond Ave suite a
Madera, CA 93637',
      'Madera',
      'CA',
      'Office address',
      'Yes',
      '36.9453232',
      '-120.0503188'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cyril W. Rebel MD'
        AND o.latitude = '36.9453232'
        AND o.longitude = '-120.0503188'));

COMMIT;
