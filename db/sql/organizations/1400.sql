
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
      'Overlake Medical Center',
      '1035 116th Ave NE
Bellevue, WA 98004',
      'Bellevue',
      'WA',
      'We take any and all donations, you can utilize our Foundation Department to help organize your generous donations.  425-688-5000 ',
      'No',
      '47.6208736',
      '-122.1868731'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Medical Center'
        AND o.latitude = '47.6208736'
        AND o.longitude = '-122.1868731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Medical Center'
        AND o.latitude = '47.6208736'
        AND o.longitude = '-122.1868731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Medical Center'
        AND o.latitude = '47.6208736'
        AND o.longitude = '-122.1868731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Medical Center'
        AND o.latitude = '47.6208736'
        AND o.longitude = '-122.1868731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Medical Center'
        AND o.latitude = '47.6208736'
        AND o.longitude = '-122.1868731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Medical Center'
        AND o.latitude = '47.6208736'
        AND o.longitude = '-122.1868731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Medical Center'
        AND o.latitude = '47.6208736'
        AND o.longitude = '-122.1868731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Medical Center'
        AND o.latitude = '47.6208736'
        AND o.longitude = '-122.1868731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Medical Center'
        AND o.latitude = '47.6208736'
        AND o.longitude = '-122.1868731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPR and PAPR equipment',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Medical Center'
        AND o.latitude = '47.6208736'
        AND o.longitude = '-122.1868731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Full face respirators with HEPA Filters',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlake Medical Center'
        AND o.latitude = '47.6208736'
        AND o.longitude = '-122.1868731'));

COMMIT;
