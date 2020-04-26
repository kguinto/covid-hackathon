
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
      'AppleCare Immediate Care',
      '903 W Ward Street Suite A 
Douglas, GA 31533',
      'Douglas ',
      'GA',
      'Inside or mail to clinic',
      'Yes',
      '31.5101475',
      '-82.8613281'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Immediate Care'
        AND o.latitude = '31.5101475'
        AND o.longitude = '-82.8613281'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Immediate Care'
        AND o.latitude = '31.5101475'
        AND o.longitude = '-82.8613281'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Immediate Care'
        AND o.latitude = '31.5101475'
        AND o.longitude = '-82.8613281'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Immediate Care'
        AND o.latitude = '31.5101475'
        AND o.longitude = '-82.8613281'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Immediate Care'
        AND o.latitude = '31.5101475'
        AND o.longitude = '-82.8613281'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Immediate Care'
        AND o.latitude = '31.5101475'
        AND o.longitude = '-82.8613281'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Immediate Care'
        AND o.latitude = '31.5101475'
        AND o.longitude = '-82.8613281'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Immediate Care'
        AND o.latitude = '31.5101475'
        AND o.longitude = '-82.8613281'));

COMMIT;
