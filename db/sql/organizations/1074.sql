
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
      'Maggie''s Hospice and Palliative Care',
      '306 N Virginia St
Prescott, AZ 86301',
      'Prescott',
      'AZ',
      'At front door or via mail Attn Michael Berlowe',
      'Yes',
      '34.5456882',
      '-112.4621843'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maggie''s Hospice and Palliative Care'
        AND o.latitude = '34.5456882'
        AND o.longitude = '-112.4621843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maggie''s Hospice and Palliative Care'
        AND o.latitude = '34.5456882'
        AND o.longitude = '-112.4621843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maggie''s Hospice and Palliative Care'
        AND o.latitude = '34.5456882'
        AND o.longitude = '-112.4621843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maggie''s Hospice and Palliative Care'
        AND o.latitude = '34.5456882'
        AND o.longitude = '-112.4621843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maggie''s Hospice and Palliative Care'
        AND o.latitude = '34.5456882'
        AND o.longitude = '-112.4621843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maggie''s Hospice and Palliative Care'
        AND o.latitude = '34.5456882'
        AND o.longitude = '-112.4621843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maggie''s Hospice and Palliative Care'
        AND o.latitude = '34.5456882'
        AND o.longitude = '-112.4621843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maggie''s Hospice and Palliative Care'
        AND o.latitude = '34.5456882'
        AND o.longitude = '-112.4621843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maggie''s Hospice and Palliative Care'
        AND o.latitude = '34.5456882'
        AND o.longitude = '-112.4621843'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maggie''s Hospice and Palliative Care'
        AND o.latitude = '34.5456882'
        AND o.longitude = '-112.4621843'));

COMMIT;
