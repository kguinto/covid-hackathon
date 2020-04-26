
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
      'Jackson Memorial Hospital ',
      '6230 Pembroke Rd
Miramar, FL 33023',
      'Miramar',
      'FL',
      'Call 305-332-0359',
      'Yes',
      '25.9950305',
      '-80.211979'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Memorial Hospital '
        AND o.latitude = '25.9950305'
        AND o.longitude = '-80.211979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Memorial Hospital '
        AND o.latitude = '25.9950305'
        AND o.longitude = '-80.211979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Memorial Hospital '
        AND o.latitude = '25.9950305'
        AND o.longitude = '-80.211979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Memorial Hospital '
        AND o.latitude = '25.9950305'
        AND o.longitude = '-80.211979'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jackson Memorial Hospital '
        AND o.latitude = '25.9950305'
        AND o.longitude = '-80.211979'));

COMMIT;
