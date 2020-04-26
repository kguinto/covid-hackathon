
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
      'El Cerrito Royale',
      '6510 Gladys Ave
El Cerrito, CA 94530',
      'El Cerrito',
      'CA',
      'Leave outside locked front door and ring bell',
      'Yes',
      '37.91901',
      '-122.3115932'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'El Cerrito Royale'
        AND o.latitude = '37.91901'
        AND o.longitude = '-122.3115932'));

COMMIT;
