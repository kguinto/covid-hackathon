
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
      'Henry Ford Medical Center - Ford Road',
      '5500 Auto Club Dr
Dearborn, MI 48126',
      'Dearborn',
      'MI',
      'Eunice Yu, third floor internal medicine',
      'No',
      '42.325353',
      '-83.2200884'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Henry Ford Medical Center - Ford Road'
        AND o.latitude = '42.325353'
        AND o.longitude = '-83.2200884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Henry Ford Medical Center - Ford Road'
        AND o.latitude = '42.325353'
        AND o.longitude = '-83.2200884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Henry Ford Medical Center - Ford Road'
        AND o.latitude = '42.325353'
        AND o.longitude = '-83.2200884'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Henry Ford Medical Center - Ford Road'
        AND o.latitude = '42.325353'
        AND o.longitude = '-83.2200884'));

COMMIT;
