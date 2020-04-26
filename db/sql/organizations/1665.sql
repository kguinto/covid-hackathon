
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
      'UVM Health Network Porter Medical Center',
      '115 Porter Dr
Middlebury, VT 05753',
      'Middlebury ',
      'VT',
      'ATTN: Porter Emergency Room : Kathryn Samuel',
      'Yes',
      '43.9997267',
      '-73.1684387'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UVM Health Network Porter Medical Center'
        AND o.latitude = '43.9997267'
        AND o.longitude = '-73.1684387'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UVM Health Network Porter Medical Center'
        AND o.latitude = '43.9997267'
        AND o.longitude = '-73.1684387'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UVM Health Network Porter Medical Center'
        AND o.latitude = '43.9997267'
        AND o.longitude = '-73.1684387'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UVM Health Network Porter Medical Center'
        AND o.latitude = '43.9997267'
        AND o.longitude = '-73.1684387'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UVM Health Network Porter Medical Center'
        AND o.latitude = '43.9997267'
        AND o.longitude = '-73.1684387'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UVM Health Network Porter Medical Center'
        AND o.latitude = '43.9997267'
        AND o.longitude = '-73.1684387'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UVM Health Network Porter Medical Center'
        AND o.latitude = '43.9997267'
        AND o.longitude = '-73.1684387'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UVM Health Network Porter Medical Center'
        AND o.latitude = '43.9997267'
        AND o.longitude = '-73.1684387'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'UVM Health Network Porter Medical Center'
        AND o.latitude = '43.9997267'
        AND o.longitude = '-73.1684387'));

COMMIT;
