
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
      'East Jefferson General Hospital',
      '4200 Houma Blvd
Metairie, LA 70006',
      'Metairie',
      'LA',
      '"we ask that you pull up to the front circular entrance of the Hospital, call 504-503-3278, and let the caller know the color and make of your vehicle. You will remain in your car and a masked EJGH team member will come retrieve the masks and/or hospital gowns. Donations are being accepted Monday through Friday from 7:30 a.m. to 4:00 p.m."',
      'Yes',
      '30.0130374',
      '-90.1817668'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Jefferson General Hospital'
        AND o.latitude = '30.0130374'
        AND o.longitude = '-90.1817668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Jefferson General Hospital'
        AND o.latitude = '30.0130374'
        AND o.longitude = '-90.1817668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Jefferson General Hospital'
        AND o.latitude = '30.0130374'
        AND o.longitude = '-90.1817668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Jefferson General Hospital'
        AND o.latitude = '30.0130374'
        AND o.longitude = '-90.1817668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Jefferson General Hospital'
        AND o.latitude = '30.0130374'
        AND o.longitude = '-90.1817668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Jefferson General Hospital'
        AND o.latitude = '30.0130374'
        AND o.longitude = '-90.1817668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Jefferson General Hospital'
        AND o.latitude = '30.0130374'
        AND o.longitude = '-90.1817668'));

COMMIT;
