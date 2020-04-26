
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
      'Lutheran Medical center',
      '8300 W 38th Ave
Wheat Ridge, CO 80033',
      'Wheat Ridge',
      'CO',
      'Any method.',
      '',
      '39.7681121',
      '-105.0898988'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Yes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lutheran Medical center'
        AND o.latitude = '39.7681121'
        AND o.longitude = '-105.0898988'));

COMMIT;
