
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
      'Scotland Memorial Hospital',
      '500 Lauchwood Dr
Laurinburg, NC 28352',
      'Laurinburg ',
      'NC',
      'Attn: Bridgette Bowen',
      'Yes',
      '34.752905',
      '-79.4677923'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scotland Memorial Hospital'
        AND o.latitude = '34.752905'
        AND o.longitude = '-79.4677923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scotland Memorial Hospital'
        AND o.latitude = '34.752905'
        AND o.longitude = '-79.4677923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scotland Memorial Hospital'
        AND o.latitude = '34.752905'
        AND o.longitude = '-79.4677923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scotland Memorial Hospital'
        AND o.latitude = '34.752905'
        AND o.longitude = '-79.4677923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scotland Memorial Hospital'
        AND o.latitude = '34.752905'
        AND o.longitude = '-79.4677923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scotland Memorial Hospital'
        AND o.latitude = '34.752905'
        AND o.longitude = '-79.4677923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scotland Memorial Hospital'
        AND o.latitude = '34.752905'
        AND o.longitude = '-79.4677923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scotland Memorial Hospital'
        AND o.latitude = '34.752905'
        AND o.longitude = '-79.4677923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scotland Memorial Hospital'
        AND o.latitude = '34.752905'
        AND o.longitude = '-79.4677923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Scotland Memorial Hospital'
        AND o.latitude = '34.752905'
        AND o.longitude = '-79.4677923'));

COMMIT;
