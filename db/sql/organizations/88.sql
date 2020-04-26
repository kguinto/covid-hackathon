
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
      'Comfort Keepers InHome Care for the Elderly ',
      '6300 Tower Circle
Franklin, TN 37067 ',
      'Franklin',
      'TN',
      'Attn: Tricia McConnell. Please call 614-787-5100 so I can arrange to meet you.',
      'Yes',
      '35.9372509',
      '-86.8112856'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comfort Keepers InHome Care for the Elderly '
        AND o.latitude = '35.9372509'
        AND o.longitude = '-86.8112856'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comfort Keepers InHome Care for the Elderly '
        AND o.latitude = '35.9372509'
        AND o.longitude = '-86.8112856'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comfort Keepers InHome Care for the Elderly '
        AND o.latitude = '35.9372509'
        AND o.longitude = '-86.8112856'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comfort Keepers InHome Care for the Elderly '
        AND o.latitude = '35.9372509'
        AND o.longitude = '-86.8112856'));

COMMIT;
