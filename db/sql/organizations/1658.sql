
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
      'West Infusion Nurses'' Network LLC',
      '320 N Johnson St #300
Kennewick, WA 99336',
      'Kennewick',
      'WA',
      'Front door ',
      'Yes',
      '46.2131878',
      '-119.1653753'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Infusion Nurses'' Network LLC'
        AND o.latitude = '46.2131878'
        AND o.longitude = '-119.1653753'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Infusion Nurses'' Network LLC'
        AND o.latitude = '46.2131878'
        AND o.longitude = '-119.1653753'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Infusion Nurses'' Network LLC'
        AND o.latitude = '46.2131878'
        AND o.longitude = '-119.1653753'));

COMMIT;
