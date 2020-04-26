
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
      'OU-Physicians, St John''s Medical Center-Tulsa',
      'Bernsen Medical Plaza
1919 S Wheeling Ave #600, Tulsa, OK 74104',
      'Tulsa',
      'OK',
      'ATTN: ROBERT Lim',
      'Yes',
      '36.1344178',
      '-95.9643652'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OU-Physicians, St John''s Medical Center-Tulsa'
        AND o.latitude = '36.1344178'
        AND o.longitude = '-95.9643652'));

COMMIT;
