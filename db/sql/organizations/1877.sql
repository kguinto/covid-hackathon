
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
      'Hendricks Nephrology and Hypertension',
      '5492 N. Ronald Reagan PKWY, Suite 260
Brownsburg, IN 46112',
      'Brownsburg',
      'IN',
      '5492 N Ronald Reagan Pkwy',
      'No',
      '39.8442122',
      '-86.3575561'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hendricks Nephrology and Hypertension'
        AND o.latitude = '39.8442122'
        AND o.longitude = '-86.3575561'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hendricks Nephrology and Hypertension'
        AND o.latitude = '39.8442122'
        AND o.longitude = '-86.3575561'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hendricks Nephrology and Hypertension'
        AND o.latitude = '39.8442122'
        AND o.longitude = '-86.3575561'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hendricks Nephrology and Hypertension'
        AND o.latitude = '39.8442122'
        AND o.longitude = '-86.3575561'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hendricks Nephrology and Hypertension'
        AND o.latitude = '39.8442122'
        AND o.longitude = '-86.3575561'));

COMMIT;
