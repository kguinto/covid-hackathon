
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
      'Raleigh General Hospital ',
      '1710 Harper Rd
Beckley, WV 25801',
      'Beckley',
      'WV',
      '',
      'Yes',
      '37.787635',
      '-81.2017897'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raleigh General Hospital '
        AND o.latitude = '37.787635'
        AND o.longitude = '-81.2017897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raleigh General Hospital '
        AND o.latitude = '37.787635'
        AND o.longitude = '-81.2017897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raleigh General Hospital '
        AND o.latitude = '37.787635'
        AND o.longitude = '-81.2017897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raleigh General Hospital '
        AND o.latitude = '37.787635'
        AND o.longitude = '-81.2017897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raleigh General Hospital '
        AND o.latitude = '37.787635'
        AND o.longitude = '-81.2017897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raleigh General Hospital '
        AND o.latitude = '37.787635'
        AND o.longitude = '-81.2017897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raleigh General Hospital '
        AND o.latitude = '37.787635'
        AND o.longitude = '-81.2017897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raleigh General Hospital '
        AND o.latitude = '37.787635'
        AND o.longitude = '-81.2017897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raleigh General Hospital '
        AND o.latitude = '37.787635'
        AND o.longitude = '-81.2017897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raleigh General Hospital '
        AND o.latitude = '37.787635'
        AND o.longitude = '-81.2017897'));

COMMIT;
