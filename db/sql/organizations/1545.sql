
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
      'Alfano Oral Surgery - Verber Dental Group',
      '2250 Millennium Way #101
Enola, PA 17025',
      'Enola',
      'PA',
      'Leave Outside Front Office Door',
      'Yes',
      '40.2890894',
      '-76.9720921'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alfano Oral Surgery - Verber Dental Group'
        AND o.latitude = '40.2890894'
        AND o.longitude = '-76.9720921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alfano Oral Surgery - Verber Dental Group'
        AND o.latitude = '40.2890894'
        AND o.longitude = '-76.9720921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alfano Oral Surgery - Verber Dental Group'
        AND o.latitude = '40.2890894'
        AND o.longitude = '-76.9720921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alfano Oral Surgery - Verber Dental Group'
        AND o.latitude = '40.2890894'
        AND o.longitude = '-76.9720921'));

COMMIT;
