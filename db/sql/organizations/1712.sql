
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
      'Kaweah Delta Medical Center',
      '216 S Johnson St
Visalia, CA 93291',
      'Visalia',
      'CA',
      'Mailing address:
ATTN:
Kaweah Delta Medical Foundation
c/o Liz Wynn ',
      'Yes',
      '36.3286094',
      '-119.2985562'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaweah Delta Medical Center'
        AND o.latitude = '36.3286094'
        AND o.longitude = '-119.2985562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaweah Delta Medical Center'
        AND o.latitude = '36.3286094'
        AND o.longitude = '-119.2985562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaweah Delta Medical Center'
        AND o.latitude = '36.3286094'
        AND o.longitude = '-119.2985562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaweah Delta Medical Center'
        AND o.latitude = '36.3286094'
        AND o.longitude = '-119.2985562'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaweah Delta Medical Center'
        AND o.latitude = '36.3286094'
        AND o.longitude = '-119.2985562'));

COMMIT;
