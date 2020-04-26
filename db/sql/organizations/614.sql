
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
      'Northern Navajo Medical Center',
      'PO Box 160
Highway 491 North
Shiprock, NM 87420',
      'Shiprock',
      'NM',
      'Attn:Dr. Patrick Butsch',
      'Unsure',
      '36.8052353',
      '-108.6914076'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Navajo Medical Center'
        AND o.latitude = '36.8052353'
        AND o.longitude = '-108.6914076'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Navajo Medical Center'
        AND o.latitude = '36.8052353'
        AND o.longitude = '-108.6914076'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Navajo Medical Center'
        AND o.latitude = '36.8052353'
        AND o.longitude = '-108.6914076'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Eye Protection (reusable or single use eye shields)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Navajo Medical Center'
        AND o.latitude = '36.8052353'
        AND o.longitude = '-108.6914076'));

COMMIT;
