
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
      'Kaiser Permanente - Walnut Creek',
      '1425 S Main St
Walnut Creek, CA 94596',
      'Walnut Creek',
      'CA',
      '2 options:

(1) Entrance to hospital in Palm Conference Room.

(2) Administration department off campus at 1450 Maria Lane',
      'Unclear',
      '37.8924348',
      '-122.058953'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPR/CAPR Respirators',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Walnut Creek'
        AND o.latitude = '37.8924348'
        AND o.longitude = '-122.058953'));

COMMIT;
