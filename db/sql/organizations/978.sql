
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
      'Surgical Care Affiliates ',
      'Bulldog Blvd #104
Melbourne, FL 32901',
      'Melbourne',
      'FL',
      'Attn: Mike Norton',
      'Yes',
      '28.0888565',
      '-80.619622'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Surgical Care Affiliates '
        AND o.latitude = '28.0888565'
        AND o.longitude = '-80.619622'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Surgical Care Affiliates '
        AND o.latitude = '28.0888565'
        AND o.longitude = '-80.619622'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Surgical Care Affiliates '
        AND o.latitude = '28.0888565'
        AND o.longitude = '-80.619622'));

COMMIT;
